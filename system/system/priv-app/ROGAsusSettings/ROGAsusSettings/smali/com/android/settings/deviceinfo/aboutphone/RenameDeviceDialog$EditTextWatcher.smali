.class Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;
.super Ljava/lang/Object;
.source "RenameDeviceDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;-><init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    .line 183
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$200(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
