.class Lcom/reecedunn/espeak/eSpeakActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/eSpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/eSpeakActivity;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/eSpeakActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity$1;->this$0:Lcom/reecedunn/espeak/eSpeakActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity$1;->this$0:Lcom/reecedunn/espeak/eSpeakActivity;

    invoke-static {p1}, Lcom/reecedunn/espeak/eSpeakActivity;->c(Lcom/reecedunn/espeak/eSpeakActivity;)V

    return-void
.end method
