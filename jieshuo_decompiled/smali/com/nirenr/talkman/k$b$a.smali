.class Lcom/nirenr/talkman/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/k$b;-><init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/k;

.field final synthetic b:Lcom/nirenr/talkman/k$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/k$b;Lcom/nirenr/talkman/k;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/k$b$a;->b:Lcom/nirenr/talkman/k$b;

    iput-object p2, p0, Lcom/nirenr/talkman/k$b$a;->a:Lcom/nirenr/talkman/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/k$b$a;->b:Lcom/nirenr/talkman/k$b;

    iget-object p1, p1, Lcom/nirenr/talkman/k$b;->b:Lcom/nirenr/talkman/k;

    invoke-virtual {p1}, Lcom/nirenr/talkman/k;->f()V

    return-void
.end method
