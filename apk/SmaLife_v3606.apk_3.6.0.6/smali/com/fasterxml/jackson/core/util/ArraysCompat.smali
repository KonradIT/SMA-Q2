.class public Lcom/fasterxml/jackson/core/util/ArraysCompat;
.super Ljava/lang/Object;
.source "ArraysCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOf([CI)[C
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([CII)[C
    .locals 3

    .prologue
    .line 69
    array-length v0, p0

    .line 70
    sub-int v1, p2, p1

    .line 71
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    new-array v1, v1, [C

    .line 73
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v1
.end method

.method public static copyOfRange([III)[I
    .locals 3

    .prologue
    .line 92
    array-length v0, p0

    .line 93
    sub-int v1, p2, p1

    .line 94
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    new-array v1, v1, [I

    .line 96
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-object v1
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 116
    array-length v0, p0

    .line 117
    sub-int v1, p2, p1

    .line 118
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 120
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-object v0
.end method
