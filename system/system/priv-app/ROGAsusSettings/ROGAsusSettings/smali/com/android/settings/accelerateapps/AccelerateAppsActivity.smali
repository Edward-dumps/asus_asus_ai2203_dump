.class public Lcom/android/settings/accelerateapps/AccelerateAppsActivity;
.super Landroid/app/Activity;
.source "AccelerateAppsActivity.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/accelerateapps/AccelerateAppsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initSettingsFragment()V
    .locals 2

    .line 31
    const-class v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x1020002

    .line 33
    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 34
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsActivity;->initSettingsFragment()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method
