.class public final synthetic Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/slice/SliceViewManager;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroidx/slice/SliceViewManager$SliceCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$0:Landroidx/slice/SliceViewManager;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$2:Landroidx/slice/SliceViewManager$SliceCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$0:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$$ExternalSyntheticLambda2;->f$2:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-static {v0, v1, p0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->$r8$lambda$TkgG58nQLDEUj_aUjhSgUmAW95g(Landroidx/slice/SliceViewManager;Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    return-void
.end method
