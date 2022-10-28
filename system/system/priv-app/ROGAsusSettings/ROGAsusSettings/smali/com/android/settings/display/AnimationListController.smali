.class public Lcom/android/settings/display/AnimationListController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AnimationListController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final ENTRIES_ARRAY_ID:[I

.field private final TAG:Ljava/lang/String;

.field private final VALUES_ARRAY_ID:[I

.field private mContext:Landroid/content/Context;

.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mSelector:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "AnimationWindowController"

    .line 33
    iput-object v0, p0, Lcom/android/settings/display/AnimationListController;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 44
    sget v2, Lcom/android/settings/R$array;->window_animation_scale_values:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$array;->transition_animation_scale_values:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settings/R$array;->animator_duration_scale_values:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/android/settings/display/AnimationListController;->VALUES_ARRAY_ID:[I

    new-array v0, v0, [I

    .line 45
    sget v2, Lcom/android/settings/R$array;->window_animation_speed_entries:I

    aput v2, v0, v3

    sget v2, Lcom/android/settings/R$array;->transition_animation_speed_entries:I

    aput v2, v0, v4

    sget v2, Lcom/android/settings/R$array;->animator_duration_speed_entries:I

    aput v2, v0, v5

    iput-object v0, p0, Lcom/android/settings/display/AnimationListController;->ENTRIES_ARRAY_ID:[I

    .line 50
    iput-object p1, p0, Lcom/android/settings/display/AnimationListController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/display/AnimationListController;->mPreferenceKey:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/android/settings/display/AnimationListController;->mSelector:I

    const-string/jumbo p2, "window"

    .line 54
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/AnimationListController;->mWindowManager:Landroid/view/IWindowManager;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    aget v1, v1, p3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/AnimationListController;->mListValues:[Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    aget p2, v0, p3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AnimationListController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private updateAnimationScaleValue()V
    .locals 5

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/AnimationListController;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/settings/display/AnimationListController;->mSelector:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/android/settings/display/AnimationListController;->mListValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 86
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/display/AnimationListController;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnimationSelector_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/display/AnimationListController;->mSelector:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/display/AnimationListController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/display/AnimationListController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/display/AnimationListController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AnimationListController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/display/AnimationListController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/display/AnimationListController;->updateAnimationScaleValue()V

    return-void
.end method
