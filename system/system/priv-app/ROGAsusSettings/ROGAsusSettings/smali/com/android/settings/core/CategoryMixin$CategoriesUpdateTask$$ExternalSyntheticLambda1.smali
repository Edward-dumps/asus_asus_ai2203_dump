.class public final synthetic Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iput-object p2, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p0, p1}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->$r8$lambda$wyNAhTAAsSM2QCRPxddIUneOQsA(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;Landroid/content/ComponentName;)V

    return-void
.end method
