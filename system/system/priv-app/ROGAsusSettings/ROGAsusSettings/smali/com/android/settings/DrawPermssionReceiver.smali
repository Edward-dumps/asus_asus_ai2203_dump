.class public Lcom/android/settings/DrawPermssionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrawPermssionReceiver.java"

# interfaces
.implements Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPkgname:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotNow()V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.settings.action.DRAW_OVERLAY_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/DrawPermssionReceiver;->mPkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object p0, p0, Lcom/android/settings/DrawPermssionReceiver;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.settings.permission.DRAW_OVERLAY_REQUEST"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/settings/DrawPermssionReceiver;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawPermssionReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "uid"

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DrawPermssionReceiver;->mUid:I

    const-string v0, "pkgname"

    .line 40
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DrawPermssionReceiver;->mPkgname:Ljava/lang/String;

    const-string v0, "title"

    .line 41
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/DrawPermssionReceiver;->mTitle:Ljava/lang/String;

    const-string p2, "appops"

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/settings/DrawPermssionReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 44
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance p1, Lcom/android/settings/DrawPermissionDialog;

    iget-object v0, p0, Lcom/android/settings/DrawPermssionReceiver;->mTitle:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/DrawPermissionDialog;-><init>(Landroid/content/Context;Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onTurnOn()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/android/settings/DrawPermssionReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/DrawPermssionReceiver;->mUid:I

    iget-object v2, p0, Lcom/android/settings/DrawPermssionReceiver;->mPkgname:Ljava/lang/String;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.settings.action.DRAW_OVERLAY_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/DrawPermssionReceiver;->mPkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    iget-object p0, p0, Lcom/android/settings/DrawPermssionReceiver;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.settings.permission.DRAW_OVERLAY_REQUEST"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
