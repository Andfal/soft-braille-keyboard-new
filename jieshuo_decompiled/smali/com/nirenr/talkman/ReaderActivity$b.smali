.class Lcom/nirenr/talkman/ReaderActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    iput-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$b;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ReaderActivity$b;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/ReaderActivity;->d(Lcom/nirenr/talkman/ReaderActivity;)Lcom/androlua/LuaWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ReaderActivity$b;->a:Lcom/nirenr/talkman/ReaderActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/ReaderActivity;->b(Lcom/nirenr/talkman/ReaderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nirenr/talkman/o$a;

    invoke-virtual {p2}, Lcom/nirenr/talkman/o$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
