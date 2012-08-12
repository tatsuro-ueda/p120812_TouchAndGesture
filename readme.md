At first, drag and drop the **Swipe Gesture Recognizer** from Libraries into View.

![ss](http://farm9.staticflickr.com/8435/7764822070_051940d72d_o.png)

And you check off the item **canceled in View**.

![ss](http://farm9.staticflickr.com/8436/7764995368_3c8c531561_o.png)

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

	- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
	{
	    UITouch* touch = [touches anyObject];    
	    CGPoint pt = [touch locationInView:self];
	    layer.frame = CGRectMake(pt.x, pt.y, 100, 100);
	}
	
	- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
	{
	    layer.frame = CGRectMake(0, 0, 100, 100);
	}
	
	- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
	{
	    self.backgroundColor = [UIColor redColor];
	}

Now you can move image without cancelled, and you can swipe the screen to set color blue (Swipe Gesture is successfully recognized). Both you can. And, when touch ends, the window color changes to red.

![ss](http://farm9.staticflickr.com/8285/7765041898_3a8ac29d08_o.png)
