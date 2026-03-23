.class public final synthetic Lcom/benjaminwan/ocrlibrary/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/benjaminwan/ocrlibrary/Rec;

.field public final synthetic b:Lorg/opencv/core/Mat;


# direct methods
.method public synthetic constructor <init>(Lcom/benjaminwan/ocrlibrary/Rec;Lorg/opencv/core/Mat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/a;->a:Lcom/benjaminwan/ocrlibrary/Rec;

    iput-object p2, p0, Lcom/benjaminwan/ocrlibrary/a;->b:Lorg/opencv/core/Mat;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/a;->a:Lcom/benjaminwan/ocrlibrary/Rec;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/a;->b:Lorg/opencv/core/Mat;

    invoke-static {v0, v1}, Lcom/benjaminwan/ocrlibrary/Rec;->a(Lcom/benjaminwan/ocrlibrary/Rec;Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;

    move-result-object v0

    return-object v0
.end method
