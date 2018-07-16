.class public final enum Lcom/accloud/service/ACACL$OpType;
.super Ljava/lang/Enum;
.source "ACACL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/accloud/service/ACACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/accloud/service/ACACL$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/accloud/service/ACACL$OpType;

.field public static final enum READ:Lcom/accloud/service/ACACL$OpType;

.field public static final enum WRITE:Lcom/accloud/service/ACACL$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/accloud/service/ACACL$OpType;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACACL$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/accloud/service/ACACL$OpType;->READ:Lcom/accloud/service/ACACL$OpType;

    .line 10
    new-instance v0, Lcom/accloud/service/ACACL$OpType;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v3}, Lcom/accloud/service/ACACL$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/accloud/service/ACACL$OpType;->WRITE:Lcom/accloud/service/ACACL$OpType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/accloud/service/ACACL$OpType;

    sget-object v1, Lcom/accloud/service/ACACL$OpType;->READ:Lcom/accloud/service/ACACL$OpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/accloud/service/ACACL$OpType;->WRITE:Lcom/accloud/service/ACACL$OpType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/accloud/service/ACACL$OpType;->$VALUES:[Lcom/accloud/service/ACACL$OpType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/accloud/service/ACACL$OpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/accloud/service/ACACL$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACACL$OpType;

    return-object v0
.end method

.method public static values()[Lcom/accloud/service/ACACL$OpType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/accloud/service/ACACL$OpType;->$VALUES:[Lcom/accloud/service/ACACL$OpType;

    invoke-virtual {v0}, [Lcom/accloud/service/ACACL$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/accloud/service/ACACL$OpType;

    return-object v0
.end method
