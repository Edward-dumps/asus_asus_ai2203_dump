.class public Lcom/android/settings/display/VisualEnhancementPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VisualEnhancementPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final FEATURE_VISUAL_ENHANCEMENT_ON:Ljava/lang/String; = "asus.software.iris6_pq_enhanced"

.field private static final KEY_SYSTEM_PROP_SYSTEM_MODE:Ljava/lang/String; = "persist.sys.systemmode"

.field public static final KEY_VISUAL_ENHANCEMENT:Ljava/lang/String; = "visual_enhancement"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "visual_enhancement"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->ON:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->OFF:I

    const-string v0, "VisualEnhancementPreferenceController"

    .line 44
    iput-object v0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->TAG:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/VisualEnhancementPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/VisualEnhancementPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "visual_enhancement"

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

    .line 69
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_pq_enhanced"

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

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 74
    sget-object p1, Lcom/android/settings/display/VisualEnhancementPreferenceController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 99
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance p2, Lcom/android/settings/display/VisualEnhancementPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/VisualEnhancementPreferenceController$1;-><init>(Lcom/android/settings/display/VisualEnhancementPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_pq_enhanced"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 109
    iput-object p1, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/display/VisualEnhancementPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->asus_visual_enhancement_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
