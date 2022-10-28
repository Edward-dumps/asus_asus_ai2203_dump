.class public Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AsusRhinoShieldCameraController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;
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

.field private mOnChangeListener:Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;

.field private mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mKeyToValueMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method public static getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 0

    .line 72
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

    .line 118
    sget-object p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mKeyToValueMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "key_asus_rhinoshield_camera"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "key_asus_rhinoshield_camera_none"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private handlePreferenceChange(I)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "asus_cover_rhino_open_camera"

    invoke-static {p0, v0, p1}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 104
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->getKeyMap(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->handlePreferenceChange(I)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mOnChangeListener:Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mOnChangeListener:Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController$OnChangeListener;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "asus_cover_rhino_open_camera"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->getKeyMap(Landroid/content/ContentResolver;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 132
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusRhinoShieldCameraController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
