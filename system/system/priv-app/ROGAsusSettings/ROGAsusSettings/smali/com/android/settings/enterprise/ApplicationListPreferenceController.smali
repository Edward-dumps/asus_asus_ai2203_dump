.class public Lcom/android/settings/enterprise/ApplicationListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ApplicationListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p3, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 49
    iput-object p4, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 50
    invoke-interface {p2, p1, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;->buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onListOfAppsResult(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    .line 70
    iget-object v1, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 72
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/UserAppInfo;

    .line 73
    new-instance v5, Lcom/android/settingslib/widget/AppPreference;

    invoke-direct {v5, v1}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v6, v4, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v4, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v4}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 77
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 78
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
