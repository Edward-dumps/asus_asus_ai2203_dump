.class public Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x235

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 221
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_detail_dialog_system:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 226
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method
