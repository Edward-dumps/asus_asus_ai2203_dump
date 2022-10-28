.class public Lcom/android/settings/display/DisplayWallpaperPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DisplayWallpaperPreferenceController.java"


# static fields
.field private static final LAUNCHED_SETTINGS:Ljava/lang/String; = "app_launched_settings"

.field private static final TAG:Ljava/lang/String; = "DisplayWallpaperPreferenceController"


# instance fields
.field private final mStylesAndWallpaperClass:Ljava/lang/String;

.field private final mWallpaperClass:Ljava/lang/String;

.field private final mWallpaperLaunchExtra:Ljava/lang/String;

.field private final mWallpaperPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->config_wallpaper_picker_package:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->config_wallpaper_picker_class:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->config_styles_and_wallpaper_picker_class:I

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mStylesAndWallpaperClass:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->config_wallpaper_picker_launch_extra:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperLaunchExtra:Ljava/lang/String;

    return-void
.end method

.method private canResolveWallpaperComponent(Ljava/lang/String;)Z
    .locals 2

    .line 126
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public areStylesAvailable()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mStylesAndWallpaperClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mStylesAndWallpaperClass:Ljava/lang/String;

    .line 122
    invoke-direct {p0, v0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->canResolveWallpaperComponent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

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

.method public getComponentClassString()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->areStylesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mStylesAndWallpaperClass:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 75
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->getComponentClassString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->areStylesAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 71
    sget p0, Lcom/android/settings/R$string;->style_and_wallpaper_settings_title:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->wallpaper_settings_title:I

    .line 70
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->mWallpaperLaunchExtra:Ljava/lang/String;

    const-string v2, "app_launched_settings"

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWallpaperPreferenceController;->areStylesAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x10008000

    .line 111
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
