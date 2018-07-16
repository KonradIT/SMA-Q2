.class Lcom/hiflying/smartlink/v3/SnifferSmartLinker$SnifferSmartLinkerInner;
.super Ljava/lang/Object;
.source "SnifferSmartLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiflying/smartlink/v3/SnifferSmartLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnifferSmartLinkerInner"
.end annotation


# static fields
.field private static final SNIFFER_SMART_LINKER:Lcom/hiflying/smartlink/v3/SnifferSmartLinker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiflying/smartlink/v3/SnifferSmartLinker;-><init>(Lcom/hiflying/smartlink/v3/SnifferSmartLinker;)V

    sput-object v0, Lcom/hiflying/smartlink/v3/SnifferSmartLinker$SnifferSmartLinkerInner;->SNIFFER_SMART_LINKER:Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/hiflying/smartlink/v3/SnifferSmartLinker;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hiflying/smartlink/v3/SnifferSmartLinker$SnifferSmartLinkerInner;->SNIFFER_SMART_LINKER:Lcom/hiflying/smartlink/v3/SnifferSmartLinker;

    return-object v0
.end method
