.class public Lcom/smalife/wheelview/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/smalife/wheelview/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/smalife/wheelview/WheelAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = 0x4


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/smalife/wheelview/ArrayWheelAdapter;, "Lcom/smalife/wheelview/ArrayWheelAdapter<TT;>;"
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/smalife/wheelview/ArrayWheelAdapter;-><init>(Ljava/util/ArrayList;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/smalife/wheelview/ArrayWheelAdapter;, "Lcom/smalife/wheelview/ArrayWheelAdapter<TT;>;"
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->items:Ljava/util/ArrayList;

    .line 26
    iput p2, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->length:I

    .line 27
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/smalife/wheelview/ArrayWheelAdapter;, "Lcom/smalife/wheelview/ArrayWheelAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/smalife/wheelview/ArrayWheelAdapter;, "Lcom/smalife/wheelview/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/smalife/wheelview/ArrayWheelAdapter;, "Lcom/smalife/wheelview/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/smalife/wheelview/ArrayWheelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
