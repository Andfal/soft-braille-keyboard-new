.class Lcom/reecedunn/espeak/TtsService$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/TtsService;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/TtsService;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/TtsService$2;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean p1, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService$2;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-static {p1}, Lcom/reecedunn/espeak/TtsService;->b(Lcom/reecedunn/espeak/TtsService;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService$2;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/reecedunn/espeak/TtsService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
