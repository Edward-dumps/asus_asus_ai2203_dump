.class Lcom/android/settings/network/MobileNetworkListFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "MobileNetworkListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {p1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    sget p1, Lcom/android/settings/R$xml;->network_provider_sims_list:I

    goto :goto_0

    .line 93
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->mobile_network_list:I

    :goto_0
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 94
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 100
    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method
