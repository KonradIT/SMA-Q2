.class public final enum Lcom/igexin/getuiext/ui/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/getuiext/ui/d;

.field public static final enum b:Lcom/igexin/getuiext/ui/d;

.field public static final enum c:Lcom/igexin/getuiext/ui/d;

.field public static final enum d:Lcom/igexin/getuiext/ui/d;

.field public static final enum e:Lcom/igexin/getuiext/ui/d;

.field public static final enum f:Lcom/igexin/getuiext/ui/d;

.field private static final synthetic g:[Lcom/igexin/getuiext/ui/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "SLEEP"

    invoke-direct {v0, v1, v3}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->a:Lcom/igexin/getuiext/ui/d;

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->c:Lcom/igexin/getuiext/ui/d;

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v6}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->d:Lcom/igexin/getuiext/ui/d;

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v7}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->e:Lcom/igexin/getuiext/ui/d;

    new-instance v0, Lcom/igexin/getuiext/ui/d;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/igexin/getuiext/ui/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/getuiext/ui/d;->f:Lcom/igexin/getuiext/ui/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/igexin/getuiext/ui/d;

    sget-object v1, Lcom/igexin/getuiext/ui/d;->a:Lcom/igexin/getuiext/ui/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/getuiext/ui/d;->b:Lcom/igexin/getuiext/ui/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/getuiext/ui/d;->c:Lcom/igexin/getuiext/ui/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/igexin/getuiext/ui/d;->d:Lcom/igexin/getuiext/ui/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/igexin/getuiext/ui/d;->e:Lcom/igexin/getuiext/ui/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/igexin/getuiext/ui/d;->f:Lcom/igexin/getuiext/ui/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/getuiext/ui/d;->g:[Lcom/igexin/getuiext/ui/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/getuiext/ui/d;
    .locals 1

    sget-object v0, Lcom/igexin/getuiext/ui/d;->g:[Lcom/igexin/getuiext/ui/d;

    invoke-virtual {v0}, [Lcom/igexin/getuiext/ui/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/getuiext/ui/d;

    return-object v0
.end method
