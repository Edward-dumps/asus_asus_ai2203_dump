.class public Lcom/android/settings/display/ColorModePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 211
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$2;

    sget v1, Lcom/android/settings/R$xml;->color_mode_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private isValidColorMode(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 111
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->color_mode_preview:I

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    const/4 p0, 0x0

    .line 105
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 106
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mResources:Landroid/content/res/Resources;

    .line 119
    invoke-static {v0}, Lcom/android/settings/display/ColorModeUtils;->getColorModeMapping(Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const-string v3, "config_availableColorModes"

    const-string v4, "array"

    const-string v5, "android"

    .line 122
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 123
    new-instance v6, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/settings/display/ColorModePreferenceFragment;->getKeyForColorMode(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct {v6, v7, v5, v8}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 123
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColorMode()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getColorMode()I

    move-result p0

    return p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getColorMode()I

    move-result v0

    .line 134
    invoke-direct {p0, v0}, Lcom/android/settings/display/ColorModePreferenceFragment;->isValidColorMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getKeyForColorMode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getKeyForColorMode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getKeyForColorMode(I)Ljava/lang/String;
    .locals 1

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "color_mode_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x477

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 100
    sget p0, Lcom/android/settings/R$xml;->color_mode_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 65
    sput-object p1, Lcom/android/settings/display/ColorModePreferenceFragment;->mContext:Landroid/content/Context;

    .line 66
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mResources:Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$1;-><init>(Lcom/android/settings/display/ColorModePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 82
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 85
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 84
    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 95
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public setColorMode(I)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "_"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->isValidColorMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->setColorMode(I)V

    :cond_0
    return v1
.end method
