.class public Lcom/android/settings/display/QuickSettingLayoutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "QuickSettingLayoutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_QUICK_SETTING_LAYOUT:Ljava/lang/String; = "quick_setting_layout"

.field private static final TAG:Ljava/lang/String; = "QuickSettingLayoutPreferenceController"


# instance fields
.field private QS_LAYOUT_MODE:Ljava/lang/String;

.field private QS_LAYOUT_MODE_CLASSIC:I

.field private QS_LAYOUT_MODE_ONE_HAND:I

.field private mContext:Landroid/content/Context;

.field private mQuickSettingLayoutPref:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "quick_setting_layout"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "qs_layout_mode"

    .line 25
    iput-object v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_CLASSIC:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_ONE_HAND:I

    .line 31
    iput-object p1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mQuickSettingLayoutPref:Landroidx/preference/ListPreference;

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->quick_setting_layout_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->quick_setting_layout_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 43
    iget-object v2, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_CLASSIC:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 44
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mQuickSettingLayoutPref:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mQuickSettingLayoutPref:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 47
    iget-object p0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mQuickSettingLayoutPref:Landroidx/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 52
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 53
    sget-object v0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: new value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_CLASSIC:I

    if-ne p2, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_CLASSIC:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_ONE_HAND:I

    if-ne p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->QS_LAYOUT_MODE_ONE_HAND:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/QuickSettingLayoutPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->quick_setting_layout_entries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 63
    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
