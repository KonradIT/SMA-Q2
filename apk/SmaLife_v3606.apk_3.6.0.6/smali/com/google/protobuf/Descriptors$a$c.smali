.class final enum Lcom/google/protobuf/Descriptors$a$c;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/Descriptors$a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/protobuf/Descriptors$a$c;

.field public static final enum b:Lcom/google/protobuf/Descriptors$a$c;

.field public static final enum c:Lcom/google/protobuf/Descriptors$a$c;

.field private static final synthetic d:[Lcom/google/protobuf/Descriptors$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1620
    new-instance v0, Lcom/google/protobuf/Descriptors$a$c;

    const-string v1, "TYPES_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Descriptors$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Descriptors$a$c;->a:Lcom/google/protobuf/Descriptors$a$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$a$c;

    const-string v1, "AGGREGATES_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/Descriptors$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Descriptors$a$c;->b:Lcom/google/protobuf/Descriptors$a$c;

    new-instance v0, Lcom/google/protobuf/Descriptors$a$c;

    const-string v1, "ALL_SYMBOLS"

    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/Descriptors$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Descriptors$a$c;->c:Lcom/google/protobuf/Descriptors$a$c;

    .line 1619
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$a$c;

    sget-object v1, Lcom/google/protobuf/Descriptors$a$c;->a:Lcom/google/protobuf/Descriptors$a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/Descriptors$a$c;->b:Lcom/google/protobuf/Descriptors$a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/Descriptors$a$c;->c:Lcom/google/protobuf/Descriptors$a$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protobuf/Descriptors$a$c;->d:[Lcom/google/protobuf/Descriptors$a$c;

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
    .line 1619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$a$c;
    .locals 1

    .prologue
    .line 1619
    const-class v0, Lcom/google/protobuf/Descriptors$a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$a$c;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$a$c;
    .locals 1

    .prologue
    .line 1619
    sget-object v0, Lcom/google/protobuf/Descriptors$a$c;->d:[Lcom/google/protobuf/Descriptors$a$c;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$a$c;

    return-object v0
.end method
