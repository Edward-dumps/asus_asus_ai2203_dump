.class public final synthetic Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->$r8$lambda$Bdce5YjVvMxf_J_Cy3v1fJ0KcaY(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method
