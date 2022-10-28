.class Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableChangerRunnable"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mState:I

.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    .line 925
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    .line 927
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    .line 928
    iput p4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    const-string v1, "com.asus.gamecenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    const-string v1, "com.asus.gamewidget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$2100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->showNotification(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_1
    return-void
.end method
