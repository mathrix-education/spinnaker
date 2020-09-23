library progress_button;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mathrix_education_app/ui/buttons/primary_button.dart';
import 'package:mathrix_education_app/ui/variables/colors.dart';

import 'button_text.dart';

/// A button that animates between state changes.
/// Progress state is just a small circle with a progress indicator inside
/// Error state is a vibrating error animation
/// Normal state is the button itself
class ProgressButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget child;
  final Color backgroundColor;
  final Color progressColor;
  final ButtonState buttonState;

  ProgressButton({Key key, @required this.buttonState, @required this.onPressed, this.text, this.child, this.backgroundColor, this.progressColor})
      : super(key: key);

  @override
  _ProgressButtonState createState() => _ProgressButtonState();
}

enum ButtonState { inProgress, success, error, normal }

class _ProgressButtonState extends State<ProgressButton> with TickerProviderStateMixin {
  AnimationController _errorAnimationController;
  AnimationController _progressAnimationController;
  Animation<Offset> _errorAnimation;
  Animation<BorderRadius> _borderAnimation;
  Animation<double> _widthAnimation;

  BorderRadius get borderRadius => _borderAnimation.value ?? BorderRadius.circular(12);

  Color get backgroundColor => yellow;

  Color get progressColor => widget.progressColor ?? Colors.white;

  Widget get child => widget.text != null ? ButtonText(text: widget.text) : widget.child;

  double get buttonWidth {
    return _widthAnimation.value ?? double.infinity;
  }

  @override
  void initState() {
    super.initState();

    _errorAnimationController = new AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _progressAnimationController = new AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    // Define errorAnimation sequence
    _errorAnimation = TweenSequence<Offset>([
      TweenSequenceItem<Offset>(tween: Tween(begin: Offset(0, 0), end: Offset(0.03, 0)), weight: 1),
      TweenSequenceItem<Offset>(tween: Tween(begin: Offset(0.03, 0), end: Offset(-0.03, 0)), weight: 2),
      TweenSequenceItem<Offset>(tween: Tween(begin: Offset(-0.03, 0), end: Offset(0.03, 0)), weight: 2),
      TweenSequenceItem<Offset>(tween: Tween(begin: Offset(0.03, 0), end: Offset(-0.03, 0)), weight: 2),
      TweenSequenceItem<Offset>(tween: Tween(begin: Offset(-0.03, 0), end: Offset(0, 0)), weight: 1)
    ]).animate(CurvedAnimation(
      parent: _errorAnimationController,
      curve: Curves.linear,
    ));
  }

  @override
  void didUpdateWidget(ProgressButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    // React to state changes by comparing old and new state
    if (oldWidget.buttonState != ButtonState.success && widget.buttonState == ButtonState.success) {
      _progressAnimationController.stop();
    }
    if (oldWidget.buttonState != ButtonState.error && widget.buttonState == ButtonState.error) {
      _progressAnimationController.stop();
      _errorAnimationController.reset();
      _errorAnimationController.forward();
    }
    if (oldWidget.buttonState != ButtonState.inProgress && widget.buttonState == ButtonState.inProgress) {
      _progressAnimationController.reset();
      _progressAnimationController.forward();
    }
    if (widget.buttonState == ButtonState.normal) {
      _progressAnimationController.reset();
    }
  }

  /// A utility function to check whether an animation is running
  bool isAnimationRunning(AnimationController controller) {
    return !(controller.isCompleted || controller.isDismissed);
  }

  @override
  Widget build(BuildContext context) {
    return getErrorAnimatedBuilder();
  }

  AnimatedBuilder getErrorAnimatedBuilder() {
    return AnimatedBuilder(
        animation: _errorAnimationController,
        builder: (context, child) {
          return SlideTransition(position: _errorAnimation, child: LayoutBuilder(builder: getProgressAnimatedBuilder));
        });
  }

  AnimatedBuilder getProgressAnimatedBuilder(BuildContext context, BoxConstraints constraints) {
    var buttonHeight = constraints.maxHeight;
    // If there is no constraint on height, we should constrain it
    if (buttonHeight == double.infinity) buttonHeight = 48;

    // These animation configurations can be tweaked to have
    // however you like it
    _borderAnimation = BorderRadiusTween(begin: BorderRadius.circular(buttonHeight / 6), end: BorderRadius.circular(buttonHeight / 2))
        .animate(CurvedAnimation(parent: _progressAnimationController, curve: Curves.linear));

    _widthAnimation = Tween<double>(
      begin: constraints.maxWidth,
      end: 120,
    ).animate(CurvedAnimation(
      parent: _progressAnimationController,
      curve: Curves.linear,
    ));

    Widget buttonContent;
    Color buttonColor;

    if (widget.buttonState == ButtonState.normal) {
      buttonContent = child;
    } else if (widget.buttonState == ButtonState.inProgress) {
      buttonColor = yellow;
      buttonContent = Padding(
        padding: EdgeInsets.all(8),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(progressColor ?? Colors.white),
          strokeWidth: 3,
        ),
      );
    } else if(widget.buttonState == ButtonState.success) {
      buttonColor = jade;
      buttonContent = ButtonText(text: 'Succès !');
    }

    return AnimatedBuilder(
      animation: _progressAnimationController,
      builder: (context, child) {
        return PrimaryButton(
          onPressed: widget.onPressed,
          width: buttonWidth,
          child: buttonContent,
          color: buttonColor,
        );
      },
    );
  }
}
