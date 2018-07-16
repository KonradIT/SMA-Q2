.class public final enum Lcom/igexin/getuiext/ui/promotion/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/getuiext/ui/promotion/m;

.field public static final enum b:Lcom/igexin/getuiext/ui/promotion/m;

.field public static final enum c:Lcom/igexin/getuiext/ui/promotion/m;

.field public static final enum d:Lcom/igexin/getuiext/ui/promotion/m;

.field private static final synthetic e:[Lcom/igexin/getuiext/ui/promotion/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/m;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/igexin/getuiext/ui/promotion/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/m;->a:Lcom/igexin/getuiext/ui/promotion/m;

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/m;

    const-string v1, "IMG"

    invoke-direct {v0, v1, v3}, Lcom/igexin/getuiext/ui/promotion/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/m;->b:Lcom/igexin/getuiext/ui/promotion/m;

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/m;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/igexin/getuiext/ui/promotion/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/m;->c:Lcom/igexin/getuiext/ui/promotion/m;

    new-instance v0, Lcom/igexin/getuiext/ui/promotion/m;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/igexin/getuiext/ui/promotion/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/m;->d:Lcom/igexin/getuiext/ui/promotion/m;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/igexin/getuiext/ui/promotion/m;

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/m;->a:Lcom/igexin/getuiext/ui/promotion/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/m;->b:Lcom/igexin/getuiext/ui/promotion/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/m;->c:Lcom/igexin/getuiext/ui/promotion/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/getuiext/ui/promotion/m;->d:Lcom/igexin/getuiext/ui/promotion/m;

    aput-object v1, v0, v5

    sput-object v0, Lcom/igexin/getuiext/ui/promotion/m;->e:[Lcom/igexin/getuiext/ui/promotion/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/getuiext/ui/promotion/m;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/ui/promotion/m;->e:[Lcom/igexin/getuiext/ui/promotion/m;

    invoke-virtual {v0}, [Lcom/igexin/getuiext/ui/promotion/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/getuiext/ui/promotion/m;

    return-object v0
.end method
