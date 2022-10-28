.class Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;
.super Ljava/lang/Object;
.source "RenameDeviceDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->toggleSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "input_method"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
