.class public final synthetic Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
