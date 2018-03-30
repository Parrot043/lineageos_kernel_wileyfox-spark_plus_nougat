--- drivers/usb/core/quirks.c
+++ drivers/usb/core/quirks.c
@@ -219,7 +219,8 @@ static const struct usb_device_id usb_quirk_list[] = {
 			USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL },
 
 	/* Corsair Strafe RGB */
-	{ USB_DEVICE(0x1b1c, 0x1b20), .driver_info = USB_QUIRK_DELAY_INIT },
+	{ USB_DEVICE(0x1b1c, 0x1b20), .driver_info = USB_QUIRK_DELAY_INIT |
+	  USB_QUIRK_DELAY_CTRL_MSG },
 
 	/* Corsair K70 LUX */
 	{ USB_DEVICE(0x1b1c, 0x1b36), .driver_info = USB_QUIRK_DELAY_INIT },
