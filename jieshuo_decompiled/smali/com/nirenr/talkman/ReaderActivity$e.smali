.class Lcom/nirenr/talkman/ReaderActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ReaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$e;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$e;->a:Lcom/nirenr/talkman/ReaderActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ReaderActivity;->e(Lcom/nirenr/talkman/ReaderActivity;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$e;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ReaderActivity;->f(Lcom/nirenr/talkman/ReaderActivity;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$e;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/HtmlUtil;->n()V

    return-void
.end method
