.class Lcom/nirenr/talkman/dialog/a$j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a$j;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/a$j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a$j;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$j$b;->a:Lcom/nirenr/talkman/dialog/a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j$b;->a:Lcom/nirenr/talkman/dialog/a$j;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a$j;->a(Lcom/nirenr/talkman/dialog/a$j;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
