.class public Lcom/android/settings/display/ScreenTimeoutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ScreenTimeoutPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static PREF_NAME:Ljava/lang/String; = "screen_timeout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field private final mScreenTimeoutKey:Ljava/lang/String;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeoutEntries:[Ljava/lang/CharSequence;

.field private final mTimeoutValues:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$array;->screen_timeout_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutEntries:[Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->screen_timeout_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method private getCurrentScreenTimeout()J
    .locals 3

    .line 180
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_off_timeout"

    const-wide/32 v1, 0xea60

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentTimeout(J)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 201
    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutEntries:[Ljava/lang/CharSequence;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLargestTimeout(J)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutValues:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 212
    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutEntries:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getMaxScreenTimeout()Ljava/lang/Long;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private getPreferenceDisablingAdmin(J)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    .line 169
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getLargestTimeout(J)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    .line 173
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getTimeoutDescription(JJ)Ljava/lang/CharSequence;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mTimeoutValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    array-length v1, v1

    array-length v0, v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    .line 193
    invoke-direct {p0, p3, p4}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getLargestTimeout(J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 195
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getCurrentTimeout(J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTimeoutSummary(J)Ljava/lang/CharSequence;
    .locals 4

    .line 141
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getCurrentScreenTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->never_timeout_entry:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getTimeoutDescription(JJ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 146
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->screen_timeout_summary:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 89
    sget-object p1, Lcom/android/settings/display/ScreenTimeoutPreferenceController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 104
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance p2, Lcom/android/settings/display/ScreenTimeoutPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/ScreenTimeoutPreferenceController$1;-><init>(Lcom/android/settings/display/ScreenTimeoutPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->updateSummary(Landroid/content/Intent;)V

    return-void
.end method

.method public updateSummary(Landroid/content/Intent;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getMaxScreenTimeout()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 120
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getPreferenceDisablingAdmin(J)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 122
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "ScreenTimeOut"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v4, :cond_2

    .line 128
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getTimeoutSummary(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getTimeoutSummary(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenTimeoutPreferenceController;->getTimeoutSummary(J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
