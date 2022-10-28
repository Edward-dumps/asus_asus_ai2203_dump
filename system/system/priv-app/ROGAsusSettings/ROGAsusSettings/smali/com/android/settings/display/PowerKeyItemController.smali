.class public Lcom/android/settings/display/PowerKeyItemController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PowerKeyItemController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;
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

.field private mOnChangeListener:Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;

.field private mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/PowerKeyItemController;->mKeyToValueMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    :cond_0
    iput-object p3, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method public static getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getKeyMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/android/settings/display/PowerKeyItemController;->mKeyToValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "power_key_selection_classic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "power_key_selection_full_screen_1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "power_key_selection_full_screen_2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "power_key_selection_full_screen_3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handlePreferenceChange(I)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyItemController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "power_key_ui_mode"

    invoke-static {p0, v0, p1}, Lcom/android/settings/display/PowerKeyItemController;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/display/PowerKeyItemController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/android/settings/display/PowerKeyItemController;->getKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/display/PowerKeyItemController;->handlePreferenceChange(I)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mOnChangeListener:Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mOnChangeListener:Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/display/PowerKeyItemController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "power_key_ui_mode"

    invoke-static {p1, v0}, Lcom/android/settings/display/PowerKeyItemController;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    invoke-static {}, Lcom/android/settings/display/PowerKeyItemController;->getKeyMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/display/PowerKeyItemController;->mPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
