.class final Lcom/hiflying/smartlink/v7/MulticastSmartLinker$MulticastSmartLinkerInner;
.super Ljava/lang/Object;
.source "MulticastSmartLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiflying/smartlink/v7/MulticastSmartLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MulticastSmartLinkerInner"
.end annotation


# static fields
.field private static final MULTICAST_SMART_LINKER:Lcom/hiflying/smartlink/v7/MulticastSmartLinker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    invoke-direct {v0}, Lcom/hiflying/smartlink/v7/MulticastSmartLinker;-><init>()V

    sput-object v0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker$MulticastSmartLinkerInner;->MULTICAST_SMART_LINKER:Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/hiflying/smartlink/v7/MulticastSmartLinker;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/hiflying/smartlink/v7/MulticastSmartLinker$MulticastSmartLinkerInner;->MULTICAST_SMART_LINKER:Lcom/hiflying/smartlink/v7/MulticastSmartLinker;

    return-object v0
.end method
