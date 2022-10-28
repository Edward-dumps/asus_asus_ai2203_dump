.class Lcom/android/settings/localbackup/LocalBackupPreferenceController$1;
.super Ljava/lang/Object;
.source "LocalBackupPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localbackup/LocalBackupPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localbackup/LocalBackupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/localbackup/LocalBackupPreferenceController;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/localbackup/LocalBackupPreferenceController$1;->this$0:Lcom/android/settings/localbackup/LocalBackupPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/localbackup/LocalBackupPreferenceController$1;->this$0:Lcom/android/settings/localbackup/LocalBackupPreferenceController;

    invoke-static {p0}, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->access$000(Lcom/android/settings/localbackup/LocalBackupPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->access$100(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
