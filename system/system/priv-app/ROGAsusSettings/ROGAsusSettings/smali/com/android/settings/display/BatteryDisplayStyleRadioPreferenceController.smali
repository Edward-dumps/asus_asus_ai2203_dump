.class public Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryDisplayStyleRadioPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field public static final KEY_STYLE_ICON:Ljava/lang/String; = "battery_display_style_icon"

.field public static final KEY_STYLE_ICON_AND_PRECENT:Ljava/lang/String; = "battery_display_style_icon_and_percentage"

.field public static final KEY_STYLE_PERCENT:Ljava/lang/String; = "battery_display_style_percentage"

.field public static final TAG:Ljava/lang/String; = "BatteryDisplayStyleRadioPreferenceController"

.field public static final VAL_ICON_ONLY:I = 0x0

.field public static final VAL_ICON_WITH_PERCENTAGE:I = 0x1

.field public static final VAL_PERCENTAGE_ONLY:I = 0x2


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field mSettingsObserver:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/16 v0, 0x8

    .line 107
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryDisplayStyleRadioPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public onPause()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mSettingsObserver:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 5

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "battery_display_style_percentage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "battery_display_style_icon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v1, "battery_display_style_icon_and_percentage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    const-string p1, "asus_status_bar_show_battery_percent"

    packed-switch v4, :pswitch_data_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not known"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryDisplayStyleRadioPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 120
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 128
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa8ce00b -> :sswitch_2
        0x2fd40956 -> :sswitch_1
        0x5928e5b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mSettingsObserver:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;-><init>(Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mSettingsObserver:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mSettingsObserver:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;

    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 138
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "asus_status_bar_show_battery_percent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery_display_style_percentage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 148
    :cond_1
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery_display_style_icon_and_percentage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 145
    :cond_2
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "battery_display_style_icon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
