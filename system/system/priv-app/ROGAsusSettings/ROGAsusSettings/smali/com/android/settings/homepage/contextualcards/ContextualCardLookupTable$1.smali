.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 9

    .line 69
    const-class v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    const-class v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const-class v3, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const-class v4, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v5, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 70
    new-instance v6, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v7, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    const/4 v8, 0x3

    invoke-direct {v6, v8, v7, v5, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v6, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v7, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    invoke-direct {v6, v8, v7, v5, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v6, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    const/4 v7, 0x2

    invoke-direct {v2, v7, v6, v1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v6, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    invoke-direct {v2, v7, v6, v1, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_STICKY:I

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->VIEW_TYPE:I

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v5, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->VIEW_TYPE:I

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v5, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
