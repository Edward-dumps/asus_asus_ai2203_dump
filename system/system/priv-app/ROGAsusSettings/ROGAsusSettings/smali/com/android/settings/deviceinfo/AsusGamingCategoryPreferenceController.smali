.class public Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusGamingCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final TAG:Ljava/lang/String; = "AsusGamingCategoryPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

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

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "category_gamepad2"

    const-string v2, "category_gamepad"

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->dongleType()I

    move-result p1

    const/16 v1, 0x8

    const-string v2, "category_aero_active"

    if-ne p1, v1, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string v0, "category_twinview_dock"

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    const-string v0, "category_desktop_dock"

    .line 82
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 70
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->gamePadType()I

    move-result p1

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_3

    .line 75
    :cond_6
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 72
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->gamePadGeneration()I

    move-result p1

    if-ne p1, v3, :cond_8

    move-object v0, v1

    goto :goto_4

    .line 73
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->gamePadGeneration()I

    move-result p1

    if-ne p1, v4, :cond_9

    move-object v0, v2

    .line 74
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_5
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
