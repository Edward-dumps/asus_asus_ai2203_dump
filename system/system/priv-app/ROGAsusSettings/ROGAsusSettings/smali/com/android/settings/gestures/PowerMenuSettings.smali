.class public Lcom/android/settings/gestures/PowerMenuSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerMenuSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerMenuSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x733

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 33
    sget p0, Lcom/android/settings/R$xml;->power_menu_settings:I

    return p0
.end method
