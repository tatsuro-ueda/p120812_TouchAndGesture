At first, drag and drop the **Swipe Gesture Recognizer** from Libraries into View.

![ss](http://farm9.staticflickr.com/8435/7764822070_051940d72d_o.png)

Write code to respond swipe gesture.

	- (IBAction)swipe:(id)sender {
	    v.backgroundColor = [UIColor blueColor];
	}

Then, write touch delegate method.

	- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
	{
	    UITouch* touch = [touches anyObject];    
	    CGPoint pt = [touch locationInView:self];
	    layer.frame = CGRectMake(pt.x, pt.y, 100, 100);
	}

Now you can point in view to move image, and you can swipe the screen to set color blue.