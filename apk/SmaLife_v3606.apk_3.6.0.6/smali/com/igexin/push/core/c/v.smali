.class final enum Lcom/igexin/push/core/c/v;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/push/core/c/v;

.field public static final enum b:Lcom/igexin/push/core/c/v;

.field public static final enum c:Lcom/igexin/push/core/c/v;

.field private static final synthetic d:[Lcom/igexin/push/core/c/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/push/core/c/v;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/core/c/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/v;->a:Lcom/igexin/push/core/c/v;

    new-instance v0, Lcom/igexin/push/core/c/v;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v3}, Lcom/igexin/push/core/c/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/v;->b:Lcom/igexin/push/core/c/v;

    new-instance v0, Lcom/igexin/push/core/c/v;

    const-string v1, "TRY_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/igexin/push/core/c/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/c/v;->c:Lcom/igexin/push/core/c/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/igexin/push/core/c/v;

    sget-object v1, Lcom/igexin/push/core/c/v;->a:Lcom/igexin/push/core/c/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/push/core/c/v;->b:Lcom/igexin/push/core/c/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/push/core/c/v;->c:Lcom/igexin/push/core/c/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/igexin/push/core/c/v;->d:[Lcom/igexin/push/core/c/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/push/core/c/v;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/c/v;->d:[Lcom/igexin/push/core/c/v;

    invoke-virtual {v0}, [Lcom/igexin/push/core/c/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/core/c/v;

    return-object v0
.end method
