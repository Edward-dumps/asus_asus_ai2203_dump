.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->$r8$lambda$vYhL_jhPHspBxQfaf36yscrbiyU(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
