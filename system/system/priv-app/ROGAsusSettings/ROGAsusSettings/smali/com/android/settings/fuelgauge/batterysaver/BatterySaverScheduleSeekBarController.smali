.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;
.super Ljava/lang/Object;
.source "BatterySaverScheduleSeekBarController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    .line 58
    sget p1, Lcom/android/settings/R$layout;->preference_widget_seekbar_settings:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const-string v1, "battery_saver_seek_bar"

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setHapticFeedbackMode(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    return-void
.end method

.method private formatStateDescription(I)Ljava/lang/CharSequence;
    .locals 3

    .line 120
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_saver_seekbar_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 120
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 72
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->formatStateDescription(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SeekBarPreference;->overrideSeekBarStateDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateSeekBar()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_power_save_mode"

    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "low_power_trigger_level"

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 94
    :cond_0
    div-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 95
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    mul-int/lit8 v0, v0, 0x5

    .line 97
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->formatStateDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->overrideSeekBarStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method
