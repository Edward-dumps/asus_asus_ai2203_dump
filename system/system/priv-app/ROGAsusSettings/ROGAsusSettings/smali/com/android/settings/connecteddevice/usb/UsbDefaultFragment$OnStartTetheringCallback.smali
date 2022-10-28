.class final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
.super Ljava/lang/Object;
.source "UsbDefaultFragment.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTetheringFailed() error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbDefaultFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, p1, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v1, p1, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 3

    const-string v0, "UsbDefaultFragment"

    const-string v1, "onTetheringStarted()"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;->this$0:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mCurrentFunctions:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    return-void
.end method
