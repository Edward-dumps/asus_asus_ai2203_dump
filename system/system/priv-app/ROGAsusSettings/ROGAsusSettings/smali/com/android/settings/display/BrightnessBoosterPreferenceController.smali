.class public Lcom/android/settings/display/BrightnessBoosterPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BrightnessBoosterPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;
    }
.end annotation


# static fields
.field public static final KEY_BRIGHTNESS_BOOSTER:Ljava/lang/String; = "brightness_booster"

.field private static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/Preference;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private warnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "asus_brightness_booster"

    .line 50
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "screen_brightness_mode"

    .line 51
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->SETTINGS_URIS:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "brightness_booster"

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance p1, Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;

    iget-object p2, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/display/BrightnessBoosterPreferenceController$BrightnessBoosterSettingsObserver;-><init>(Lcom/android/settings/display/BrightnessBoosterPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->prepareWarnDialog()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private isAutoBrightnessEnable()Z
    .locals 2

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private prepareWarnDialog()V
    .locals 3

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->display_brightness_booster_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    sget v1, Lcom/android/settings/R$string;->display_brightness_booster_dialog_content:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 74
    new-instance v1, Lcom/android/settings/display/BrightnessBoosterPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v1, Lcom/android/settings/display/BrightnessBoosterPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController$2;-><init>(Lcom/android/settings/display/BrightnessBoosterPreferenceController;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->warnDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mPreference:Landroidx/preference/Preference;

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

.method public isChecked()Z
    .locals 2

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_brightness_booster"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 5

    .line 99
    sget-object p1, Lcom/android/settings/display/BrightnessBoosterPreferenceController$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->warnDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 101
    :cond_1
    sget-object p1, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    .line 102
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    const-string v0, "asus_brightness_booster"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->warnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessBoosterPreferenceController;->isAutoBrightnessEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
