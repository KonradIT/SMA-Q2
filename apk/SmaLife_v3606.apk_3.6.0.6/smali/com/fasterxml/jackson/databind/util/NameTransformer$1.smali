.class final Lcom/fasterxml/jackson/databind/util/NameTransformer$1;
.super Lcom/fasterxml/jackson/databind/util/NameTransformer;
.source "NameTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/NameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "transformed"    # Ljava/lang/String;

    .prologue
    .line 22
    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    return-object p1
.end method
