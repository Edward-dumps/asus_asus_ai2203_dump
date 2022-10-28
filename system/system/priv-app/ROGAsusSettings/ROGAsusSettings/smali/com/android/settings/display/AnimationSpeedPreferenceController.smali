.class public Lcom/android/settings/display/AnimationSpeedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AnimationSpeedPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "AnimationSpeedPreferenceController"

    .line 27
    iput-object p1, p0, Lcom/android/settings/display/AnimationSpeedPreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "animation_speed"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 36
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
