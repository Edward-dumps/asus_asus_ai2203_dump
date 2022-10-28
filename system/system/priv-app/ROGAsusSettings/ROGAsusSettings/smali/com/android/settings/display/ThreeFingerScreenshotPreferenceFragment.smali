.class public Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ThreeFingerScreenshotPreferenceFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getSwitchState()Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_three_finger_screenshot"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ThreeFingerScreenshotPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 63
    sget p0, Lcom/android/settings/R$xml;->three_finger_screenshot_fragment:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 41
    sget v0, Lcom/android/settings/R$string;->three_finger_screenShot_title:I

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 42
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/commonresx/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 46
    iget-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->getSwitchState()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "asus_three_finger_screenshot"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method
