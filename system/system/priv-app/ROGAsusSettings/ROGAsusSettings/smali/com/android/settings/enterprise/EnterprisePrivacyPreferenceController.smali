.class public Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterprisePrivacyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPreferenceKey:Ljava/lang/String;

.field private final mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "enterprise_privacy"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    .line 47
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-direct {v1, p1}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-virtual {v0}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->isFinancedDevice()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
