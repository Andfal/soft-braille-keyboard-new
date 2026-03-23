.class Lcom/nirenr/talkman/dialog/VirtualScreen$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen$j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen$j;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$j$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$j;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$j;->b:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V

    return-void
.end method
