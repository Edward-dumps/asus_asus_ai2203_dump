.class public final synthetic Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;

    iget-object p0, p0, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-static {v0, p0}, Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;->$r8$lambda$UdpqSmZkfhdm3bUXrUaVCbQgZag(Lcom/android/settings/display/AppAspectRatioDashboardFragment$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method
