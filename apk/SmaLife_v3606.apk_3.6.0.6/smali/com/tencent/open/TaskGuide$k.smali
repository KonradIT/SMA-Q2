.class final enum Lcom/tencent/open/TaskGuide$k;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TaskGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/open/TaskGuide$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/open/TaskGuide$k;

.field public static final enum b:Lcom/tencent/open/TaskGuide$k;

.field public static final enum c:Lcom/tencent/open/TaskGuide$k;

.field public static final enum d:Lcom/tencent/open/TaskGuide$k;

.field public static final enum e:Lcom/tencent/open/TaskGuide$k;

.field public static final enum f:Lcom/tencent/open/TaskGuide$k;

.field private static final synthetic g:[Lcom/tencent/open/TaskGuide$k;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->a:Lcom/tencent/open/TaskGuide$k;

    .line 273
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "WAITTING_BACK_TASKINFO"

    invoke-direct {v0, v1, v4}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->b:Lcom/tencent/open/TaskGuide$k;

    .line 274
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "WAITTING_BACK_REWARD"

    invoke-direct {v0, v1, v5}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->c:Lcom/tencent/open/TaskGuide$k;

    .line 275
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "NORAML"

    invoke-direct {v0, v1, v6}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->d:Lcom/tencent/open/TaskGuide$k;

    .line 276
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "REWARD_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->e:Lcom/tencent/open/TaskGuide$k;

    .line 277
    new-instance v0, Lcom/tencent/open/TaskGuide$k;

    const-string v1, "REWARD_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/open/TaskGuide$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->f:Lcom/tencent/open/TaskGuide$k;

    .line 271
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/open/TaskGuide$k;

    sget-object v1, Lcom/tencent/open/TaskGuide$k;->a:Lcom/tencent/open/TaskGuide$k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/open/TaskGuide$k;->b:Lcom/tencent/open/TaskGuide$k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/open/TaskGuide$k;->c:Lcom/tencent/open/TaskGuide$k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/open/TaskGuide$k;->d:Lcom/tencent/open/TaskGuide$k;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/open/TaskGuide$k;->e:Lcom/tencent/open/TaskGuide$k;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/open/TaskGuide$k;->f:Lcom/tencent/open/TaskGuide$k;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/open/TaskGuide$k;->g:[Lcom/tencent/open/TaskGuide$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/tencent/open/TaskGuide$k;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/tencent/open/TaskGuide$k;->g:[Lcom/tencent/open/TaskGuide$k;

    invoke-virtual {v0}, [Lcom/tencent/open/TaskGuide$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/open/TaskGuide$k;

    return-object v0
.end method
