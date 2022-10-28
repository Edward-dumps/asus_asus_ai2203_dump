.class public Lcom/android/settings/network/MultiSimPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MultiSimPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "multi_sim_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
