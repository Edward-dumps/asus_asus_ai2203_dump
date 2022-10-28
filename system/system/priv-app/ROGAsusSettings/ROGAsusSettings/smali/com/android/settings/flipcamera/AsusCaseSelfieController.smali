.class public Lcom/android/settings/flipcamera/AsusCaseSelfieController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AsusCaseSelfieController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;
    }
.end annotation


# static fields
.field private static final mKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mOnChangeListener:Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;

.field private mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mKeyToValueMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    iput-object p3, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method public static getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 0

    .line 71
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getKeyMap(Landroid/content/ContentResolver;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mKeyToValueMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "key_asus_case_selfie"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "key_asus_case_selfie_none"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private handlePreferenceChange(I)V
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "asus_cover_open_camera"

    invoke-static {p0, v0, p1}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->getKeyMap(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->handlePreferenceChange(I)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mOnChangeListener:Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mOnChangeListener:Lcom/android/settings/flipcamera/AsusCaseSelfieController$OnChangeListener;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "asus_cover_open_camera"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->getKeyMap(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseSelfieController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
