.class public Lcom/android/settings/display/UIStylePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UIStylePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/settings/display/UIStylePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/UIStylePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/UIStylePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 60
    sget p0, Lcom/android/settings/R$string;->help_url_font_size:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UIStylePreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$xml;->ui_style_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
