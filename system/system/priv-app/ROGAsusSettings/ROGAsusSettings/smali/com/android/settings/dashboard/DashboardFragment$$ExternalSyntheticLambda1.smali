.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->$r8$lambda$HCTW-jG-PpZI4H9f82wHD959M1I(ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
